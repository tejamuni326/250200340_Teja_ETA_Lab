
import streamlit as st
import pandas as pd
import psycopg2

st.set_page_config(
    page_title="Titanic Dataset Project",
    page_icon="🚢",
    layout="wide"
)


# DATABASE CONNECTION
def connect_db():
    return psycopg2.connect(
        host=st.secrets["postgres"]["host"],
        port=st.secrets["postgres"]["port"],
        database=st.secrets["postgres"]["database"],
        user=st.secrets["postgres"]["user"],
        password=st.secrets["postgres"]["password"],
        connect_timeout=5
    )


# LOAD PASSENGER DATA
@st.cache_data(ttl=60)
def load_data():
    conn = connect_db()

    query = """
        SELECT
            p.passenger_id,
            p.name,
            p.sex,
            p.age,
            t.ticket,
            t.fare,
            t.cabin,
            t.embarked,
            s.sibsp,
            s.parch,
            s.pclass,
            s.survived
        FROM titanic_project.passengers p
        JOIN titanic_project.travel_details t
            ON p.passenger_id = t.passenger_id
        JOIN titanic_project.survival_details s
            ON p.passenger_id = s.passenger_id
        ORDER BY p.passenger_id
    """

    try:
        df = pd.read_sql_query(query, conn)
        return df
    finally:
        conn.close()


# QUIZ QUESTIONS
questions = [
    {
        "q": "How many passengers are in the Titanic dataset?",
        "options": ["500", "891", "1000", "1200"],
        "answer": "891",
        "explanation": "The dataset contains 891 passenger records."
    },
    {
        "q": "Which database are we using?",
        "options": ["MySQL", "MongoDB", "PostgreSQL", "SQLite"],
        "answer": "PostgreSQL",
        "explanation": "PostgreSQL stores our Titanic project data."
    },
    {
        "q": "Which Python library is used for data analysis?",
        "options": ["Pandas", "Flask", "Django", "Tkinter"],
        "answer": "Pandas",
        "explanation": "Pandas is used to analyze and manipulate data."
    },
    {
        "q": "What does survived = 1 represent?",
        "options": ["Died", "Survived", "Unknown", "Missing"],
        "answer": "Survived",
        "explanation": "A value of 1 indicates the passenger survived."
    },
    {
        "q": "What does survived = 0 represent?",
        "options": ["Survived", "Died", "First class", "Unknown"],
        "answer": "Died",
        "explanation": "A value of 0 indicates the passenger did not survive."
    },
    {
        "q": "Which column identifies each passenger?",
        "options": ["fare", "sex", "passenger_id", "cabin"],
        "answer": "passenger_id",
        "explanation": "passenger_id is the primary key."
    },
    {
        "q": "What does Pclass represent?",
        "options": ["Passenger age", "Passenger class", "Ticket number", "Port"],
        "answer": "Passenger class",
        "explanation": "Pclass identifies first, second or third class."
    },
    {
        "q": "Which library connects Python to PostgreSQL in this project?",
        "options": ["Pillow", "psycopg2", "Matplotlib", "OpenCV"],
        "answer": "psycopg2",
        "explanation": "psycopg2 is the PostgreSQL adapter for Python."
    },
    {
        "q": "What is Streamlit used for?",
        "options": ["Building web apps", "Creating databases", "Operating systems", "Editing videos"],
        "answer": "Building web apps",
        "explanation": "Streamlit creates interactive Python web applications."
    },
    {
        "q": "What does SibSp represent?",
        "options": ["Parents and children", "Siblings and spouses", "Ticket fare", "Passenger class"],
        "answer": "Siblings and spouses",
        "explanation": "SibSp counts siblings and spouses aboard."
    },
    {
        "q": "What does Parch represent?",
        "options": ["Parents and children", "Siblings", "Ticket price", "Cabin number"],
        "answer": "Parents and children",
        "explanation": "Parch counts parents and children aboard."
    },
    {
        "q": "Which SQL command retrieves data?",
        "options": ["DELETE", "DROP", "SELECT", "UPDATE"],
        "answer": "SELECT",
        "explanation": "SELECT retrieves records from database tables."
    },
    {
        "q": "Which SQL function counts records?",
        "options": ["SUM()", "COUNT()", "AVG()", "MAX()"],
        "answer": "COUNT()",
        "explanation": "COUNT() returns the number of records."
    },
    {
        "q": "Which column contains ticket prices?",
        "options": ["age", "fare", "survived", "embarked"],
        "answer": "fare",
        "explanation": "The fare column stores the ticket price."
    },
    {
        "q": "What does JOIN do in SQL?",
        "options": [
            "Deletes tables",
            "Combines related tables",
            "Creates a database",
            "Changes passwords"
        ],
        "answer": "Combines related tables",
        "explanation": "JOIN combines rows from related tables."
    }
]


# LOAD DATA
try:
    df = load_data()
except Exception as e:
    st.error(f"Database error: {e}")
    st.stop()


# SIDEBAR
st.sidebar.title("🚢 Titanic Project")
st.sidebar.write("PostgreSQL + Python + Streamlit")

page = st.sidebar.radio(
    "Navigation",
    ["Dashboard", "Data Explorer", "SQL Lab", "Interactive Test"]
)

st.sidebar.divider()
st.sidebar.success("Database Connected")
st.sidebar.caption(f"Total records: {len(df)}")


# DASHBOARD
if page == "Dashboard":

    st.title("🚢 Titanic Dashboard")
    st.write("Explore passenger and survival statistics.")

    total = len(df)
    survived = int(df["survived"].sum())
    died = total - survived
    survival_rate = survived / total * 100 if total else 0
    average_age = df["age"].mean()

    c1, c2, c3, c4 = st.columns(4)

    c1.metric("Total Passengers", total)
    c2.metric("Survived", survived)
    c3.metric("Did Not Survive", died)
    c4.metric("Survival Rate", f"{survival_rate:.2f}%")

    st.divider()

    left, right = st.columns(2)

    with left:
        st.subheader("Survival Distribution")
        survival_data = pd.DataFrame({
            "Status": ["Survived", "Did Not Survive"],
            "Passengers": [survived, died]
        }).set_index("Status")

        st.bar_chart(survival_data)

    with right:
        st.subheader("Survival by Gender")
        gender_data = (
            df.groupby("sex")["survived"]
            .mean().mul(100).rename("Survival Rate (%)")
        )
        st.bar_chart(gender_data)

    st.subheader("Survival by Passenger Class")

    class_data = (
        df.groupby("pclass")["survived"]
        .mean().mul(100).rename("Survival Rate (%)")
    )
    st.bar_chart(class_data)

    st.info(f"Average passenger age: {average_age:.2f} years")


# DATA EXPLORER
elif page == "Data Explorer":

    st.title("📊 Data Explorer")
    st.write("Explore and filter Titanic passenger records.")

    col1, col2, col3 = st.columns(3)

    with col1:
        gender = st.selectbox(
            "Gender",
            ["All"] + sorted(df["sex"].dropna().unique().tolist())
        )

    with col2:
        passenger_class = st.selectbox(
            "Passenger Class",
            ["All", 1, 2, 3]
        )

    with col3:
        survival = st.selectbox(
            "Survival Status",
            ["All", "Survived", "Did Not Survive"]
        )

    filtered = df.copy()

    if gender != "All":
        filtered = filtered[filtered["sex"] == gender]

    if passenger_class != "All":
        filtered = filtered[
            filtered["pclass"] == passenger_class
        ]

    if survival == "Survived":
        filtered = filtered[filtered["survived"] == 1]
    elif survival == "Did Not Survive":
        filtered = filtered[filtered["survived"] == 0]

    st.subheader("Passenger Records")
    st.write(f"Records found: {len(filtered)}")

    st.dataframe(
        filtered,
        use_container_width=True,
        hide_index=True
    )

    csv = filtered.to_csv(index=False).encode("utf-8")

    st.download_button(
        "Download Filtered Data (CSV)",
        csv,
        "titanic_filtered.csv",
        "text/csv"
    )


# SQL LAB
elif page == "SQL Lab":

    st.title("💻 SQL Lab")
    st.write("Execute read-only SQL queries on the Titanic database.")

    examples = {
        "Select all passengers":
            "SELECT * FROM titanic_project.passengers LIMIT 20",

        "Total passengers":
            "SELECT COUNT(*) AS total_passengers FROM titanic_project.passengers",

        "Survival statistics":
            """SELECT survived, COUNT(*) AS passengers
            FROM titanic_project.survival_details
            GROUP BY survived""",

        "Passengers by class":
            """SELECT pclass, COUNT(*) AS passengers
            FROM titanic_project.survival_details
            GROUP BY pclass ORDER BY pclass""",

        "Average ticket fare":
            "SELECT AVG(fare) AS average_fare FROM titanic_project.travel_details",

        "Survival by gender":
            """SELECT p.sex, COUNT(*) AS total,
            SUM(s.survived) AS survived
            FROM titanic_project.passengers p
            JOIN titanic_project.survival_details s
            ON p.passenger_id = s.passenger_id
            GROUP BY p.sex"""
    }

    choice = st.selectbox(
        "Choose an example query",
        list(examples.keys())
    )

    query = st.text_area(
        "SQL Query",
        value=examples[choice],
        height=160
    )

    if st.button("▶ Run Query"):

        cleaned = query.strip().rstrip(";").strip()
        upper_query = cleaned.upper()

        forbidden = [
            "INSERT", "UPDATE", "DELETE", "DROP",
            "ALTER", "CREATE", "TRUNCATE", "GRANT",
            "REVOKE", "COPY", "CALL", "DO", "EXECUTE",
            "VACUUM", "INTO"
        ]

        import re

        if not re.match(r"^(SELECT|WITH)\b", upper_query):
            st.error("Only SELECT and WITH queries are allowed.")

        elif ";" in cleaned:
            st.error("Only one SQL statement is allowed.")

        elif re.search(
            r"\b(" + "|".join(forbidden) + r")\b",
            upper_query
        ):
            st.error("This query contains a restricted SQL command.")

        elif "--" in cleaned or "/*" in cleaned:
            st.error("SQL comments are not allowed.")

        else:
            conn = None
            try:
                conn = connect_db()
                conn.set_session(readonly=True)

                result = pd.read_sql_query(cleaned, conn)

                st.success("Query executed successfully!")
                st.dataframe(
                    result,
                    use_container_width=True
                )

                st.write(f"Rows returned: {len(result)}")

            except Exception as e:
                st.error(f"SQL Error: {e}")

            finally:
                if conn is not None:
                    conn.rollback()
                    conn.close()


# INTERACTIVE TEST
elif page == "Interactive Test":

    st.title("📝 Titanic Interactive Test")
    st.write("Answer all 15 questions and check your score.")

    st.info("Each question carries one mark. Total: 15 marks.")

    for i, question in enumerate(questions):

        st.markdown(f"### Question {i + 1}")
        st.write(question["q"])

        st.radio(
            "Choose your answer:",
            question["options"],
            key=f"quiz_{i}",
            index=None
        )

    if st.button("Submit Test"):

        unanswered = [
            i for i in range(len(questions))
            if st.session_state.get(f"quiz_{i}") is None
        ]

        if unanswered:
            st.warning(
                f"Please answer all questions. "
                f"{len(unanswered)} question(s) unanswered."
            )
        else:
            score = sum(
                st.session_state[f"quiz_{i}"] == question["answer"]
                for i, question in enumerate(questions)
            )

            st.session_state["quiz_score"] = score
            st.session_state["quiz_submitted"] = True

    if st.session_state.get("quiz_submitted", False):

        score = st.session_state["quiz_score"]

        st.divider()
        st.subheader("Your Test Result")

        st.metric("Your Score", f"{score} / 15")

        st.progress(score / 15)

        if score >= 12:
            st.success("Excellent work!")
        elif score >= 8:
            st.info("Good effort! Keep learning.")
        else:
            st.warning("Keep practicing. You can improve!")

        st.subheader("Answer Explanations")

        for i, question in enumerate(questions):

            selected = st.session_state[f"quiz_{i}"]

            if selected == question["answer"]:
                st.success(f"Q{i + 1}: Correct")
            else:
                st.error(
                    f"Q{i + 1}: Incorrect. "
                    f"Correct answer: {question['answer']}"
                )

            st.caption(question["explanation"])

        if st.button("Retake Test"):
            st.session_state["quiz_submitted"] = False
            st.session_state.pop("quiz_score", None)

            for i in range(len(questions)):
                st.session_state.pop(f"quiz_{i}", None)

            st.rerun()
