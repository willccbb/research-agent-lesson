uv sync
source .venv/bin/activate

# install js/ts server tools
claude mcp add brave-search -e BRAVE_API_KEY=$BRAVE_API_KEY -- npx -y @modelcontextprotocol/server-brave-search
claude mcp add e2b -e E2B_API_KEY=$E2B_API_KEY -- npx -y @e2b/mcp-server 

# install python server tools
claude mcp add fetch uvx mcp-server-fetch

# bypass approvals for each tool
claude --dangerously-skip-permissions