#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Error: No project name provided"
    echo "Usage: $0 <project_name>"
    echo "Example: $0 ClinicalTrial2026"
    exit 1  
fi

PROJECT_NAME=$1

echo "Creating project: $PROJECT_NAME"
mkdir -p "$PROJECT_NAME"

mkdir -p "$PROJECT_NAME"/data
mkdir -p "$PROJECT_NAME"/scripts
mkdir -p "$PROJECT_NAME"/results

echo "Created: data, scripts, results"
touch "$PROJECT_NAME"/data/raw_data.txt
chmod 600 "$PROJECT_NAME"/data/raw_data.txt
echo "Created data/raw_data.txt with 600 (owner only)"

cat > "$PROJECT_NAME"/scripts/run_analysis.sh << 'EOF'
#!/bin/bash
echo "Hello from $1"
EOF

chmod +x "$PROJECT_NAME"/scripts/run_analysis.sh
echo "Created scripts/run_analysis.sh (executable)"

echo ""
echo "Project structure:"
ls -R "$PROJECT_NAME"

