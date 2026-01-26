#!/bin/bash

echo "🚀 Setting up RIYP Money Tree Bot GitHub Repository"

# Create main directory structure
mkdir -p riyp-money-tree-bot-solana
cd riyp-money-tree-bot-solana

# Initialize git
git init
git checkout -b main

# Create all directories
mkdir -p .github/workflows
mkdir -p programs/money-tree-bot/src/{instructions,state}
mkdir -p migrations
mkdir -p tests
mkdir -p client/{lib,cli}
mkdir -p scripts/{watcher-service/src/{triggers,monitors},llm-assistant/src/strategies,prompts}
mkdir -p docs/{api,guides,architecture}
mkdir -p .vscode

echo "📁 Directory structure created"

# Create initial README
cat > README.md << 'EOF'
# RIYP Money Tree Bot 🌳

[![CI](https://github.com/RIYPMoneytreebot/riyp-money-tree-bot-solana/actions/workflows/anchor-test.yml/badge.svg)](https://github.com/RIYPMoneytreebot/riyp-money-tree-bot-solana/actions/workflows/anchor-test.yml)
[![Security Scan](https://github.com/RIYPMoneytreebot/riyp-money-tree-bot-solana/actions/workflows/security-audit.yml/badge.svg)](https://github.com/RIYPMoneytreebot/riyp-money-tree-bot-solana/actions/workflows/security-audit.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Non-custodial DeFi automation on Solana with LLM assistance.

## ✨ Features

- **🛡️ Non-custodial**: Funds never leave your wallet
- **🤖 LLM-assisted**: Describe strategies in plain English
- **🔗 Protocol-agnostic**: Works with Jupiter, Raydium, Marinade, etc.
- **📜 Transparent**: All logic verifiable on-chain
- **🔧 Developer-friendly**: TypeScript SDK, CLI, and API

## 🚀 Quick Start

```bash
# Clone and setup
git clone https://github.com/RIYPMoneytreebot/riyp-money-tree-bot-solana.git
cd riyp-money-tree-bot-solana
yarn install
anchor build

# Run tests
anchor test

# Try the CLI
yarn cli --help
