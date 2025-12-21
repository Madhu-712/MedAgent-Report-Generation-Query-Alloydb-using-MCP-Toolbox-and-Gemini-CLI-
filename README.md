

---

# MedAgent – Medical Report Generation & Query System

**Using MCP Toolbox for Databases, AlloyDB & Gemini CLI**

---

## 📌 Overview

**MedAgent** is an end-to-end AI-powered system that enables users to query medical data and generate structured medical reports using **Gemini CLI** as the client interface and **MCP Toolbox for Databases** as the server-side orchestration layer.

The project demonstrates how **Model Context Protocol (MCP)** can be used to securely connect large language models with databases (AlloyDB) to fetch relevant medical information and generate intelligent, contextual responses.

This repository serves as a **reference implementation** for:
- MCP Toolbox for Databases
- Gemini CLI integration
- Database-aware LLM workflows
- Medical report generation & querying pipelines

  ---

## 🧠 Key Features

- Natural language medical queries via **Gemini CLI**
- Secure database access using **MCP Toolbox**
- AlloyDB as the backend medical data store
- Structured medical report generation
- Modular and extensible architecture
- End-to-end MCP-based LLM + Database workflow
-----

## 🏗 High-Level Architecture

**Flow:**
**User → Gemini CLI (Client) → MCP Toolbox (Server) → AlloyDB → Response**

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/cd2edb1d-c93a-415d-8f3e-b4223310e4f8" />


Gemini CLI never accesses the database directly.
All database interactions are mediated by MCP tools defined in `tools.yaml`.

---

## 📁 Project Structure 

```
MedAgent-Report-Generation-Query-Alloydb-using-MCP-Toolbox-and-Gemini-CLI-/
│
├── .env
├── README.md
├── Medical_Treatment_Plan.md
├── dbscript.sql
├── tools.yaml
│
└── Outputs/
```

---

## 📂 File & Directory Breakdown

### 🔐 `.env`

Contains environment variables required for:

* AlloyDB connection
* MCP Toolbox configuration
* Authentication secrets

---

### 📄 `tools.yaml`

Defines **MCP tools** exposed by the MCP Toolbox server.

These tools:

* Describe database schemas
* Define allowed SQL queries
* Control what Gemini CLI can access

**Purpose:**

* Acts as the **contract** between Gemini CLI and AlloyDB
* Ensures safe, schema-aware querying

---

### 🗄 `dbscript.sql`

SQL script used to:

* Initialize AlloyDB schema
* Create medical tables
* Insert sample medical data (patients, diagnoses, treatments)

This script must be executed **before running queries**.

---

### 📘 `Medical_Treatment_Plan.md`

Contains:

* Medical domain context
* Sample treatment plans
* Prompting or reference logic used by Gemini CLI

Used to guide:

* Report generation
* Treatment summaries
* Medical reasoning context

---

### 📤 `Outputs/`

Stores:

* Generated medical reports
* Query responses
* Structured outputs produced by Gemini CLI

---

## 🚀 Getting Started


### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Madhu-712/MedAgent-Report-Generation-Query-Alloydb-using-MCP-Toolbox-and-Gemini-CLI.git
cd MedAgent-Report-Generation-Query-Alloydb-using-MCP-Toolbox-and-Gemini-CLI


### 2️⃣ Setup AlloyDB

Create an AlloyDB instance

Create table patientsinfo 

Load sample data into the table

### 3️⃣ Configure MCP Toolbox Server

Create MCP Toolbox using command:

export VERSION=0.23.0
curl -O https://storage.googleapis.com/genai-toolbox/v$VERSION/linux/amd64/toolbox
chmod +x toolbox

Update database connection details
Define tools.yaml for querying medical records

Start MCP server

./toolbox --tools-file="tools.yaml"

### 4️⃣ Configure Gemini CLI
Point Gemini CLI to MCP server endpoint

Enable MCP tool usage

sudo npm install -g @google/gemini-cli

export GOOGLE_CLOUD_PROJECT=<<YOUR_PROJECT_ID>>

gemini

### 5️⃣ Run End-to-End Query

eg: List all patients suffering from Anginia?
How many ppl suffer from Cancer .List all patients info.Youngest patient suffering from Depression?
What are possible treatment for this patient ?
Suggest treatment plan for getting patient treated in USA Newyork.


---

### 🔁 End-to-End Flow

1. User enters medical query in Gemini CLI
2. Gemini CLI analyzes intent
3. MCP tool is invoked from `tools.yaml`
4. MCP Toolbox executes SQL on AlloyDB
5. Results returned as structured data
6. Gemini CLI generates medical report
7. Output stored in `Outputs/` and displayed to user

---

## 🤝 Contribution

Contributions are welcome!

Steps:

1. Fork the repo
2. Create a feature branch
3. Commit your changes
4. Open a Pull Request

Please include:

* Clear commit messages
* Updated documentation where applicable

---

## 📜 License

This project is licensed under the **MIT License**.

---

## ⭐ Final Notes

This repository is ideal for:

* Learning **MCP-based LLM + Database integration**
* Demonstrating **Gemini CLI workflows**
* Building secure AI-powered data agents

---










What are possible treatment for this patient ?
Suggest treatment plan for getting patient treated in USA Newyork.



