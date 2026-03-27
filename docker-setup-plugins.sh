#!/usr/bin/env bash
set -euo pipefail

# Install and configure plugins in Docker
COMPOSE_ARGS=(-f docker-compose.yml)
[[ -f docker-compose.extra.yml ]] && COMPOSE_ARGS+=(-f docker-compose.extra.yml)

# echo "==> Installing WeCom plugin"
# docker compose "${COMPOSE_ARGS[@]}" run --rm openclaw-cli plugins install @wecom/wecom-openclaw-plugin

# echo "==> Configuring WeCom plugin"
# docker compose "${COMPOSE_ARGS[@]}" run --rm openclaw-cli gateway start
# docker compose "${COMPOSE_ARGS[@]}" run --rm openclaw-cli channels add

# echo "==> Installing Feishu plugin"
# docker compose "${COMPOSE_ARGS[@]}" run --rm openclaw-cli plugins install @openclaw/feishu

# echo "==> Installing clawhub skills"
# docker compose "${COMPOSE_ARGS[@]}" run clawhub install 12306
# docker compose "${COMPOSE_ARGS[@]}" run --rm openclaw-cli \
#   cd /home/node/skills && git clone https://github.com/autoclaw-cc/xiaohongshu-skills.git

# echo "==> Installing X skills"
# docker compose "${COMPOSE_ARGS[@]}" run pnpm i -g @steipete/bird

echo "==> Done"
