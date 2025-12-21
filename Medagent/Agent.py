from google.adk.agents import Agent
from toolbox_core import ToolboxSyncClient
from google.adk.tools.agent_tool import AgentTool
from .customagents import google_search_agent


toolbox = ToolboxSyncClient("http://127.0.0.1:5000")

# Load all the tools
MCPtools = toolbox.load_toolset('get-patientsinfo')

root_agent = Agent(
    name="med_agent",
    model="gemini-2.0-flash",
    description=(
        "Agent to answer questions about user query using tools that are made available to it ."
    ),
    instruction=(
        "You are a helpful agent who can answer user questions about patients info from the configured tool(MCP toolbox 'get-patientsinfo') and generate treatment plan for further diagnosis and surgeries by using google search agentic tool "
    ),
    
    tools=[
        AgentTool(agent=google_search_agent),
        MCPtools
    ],



)
