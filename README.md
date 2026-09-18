# Calculator PWA + Cloudflare Worker + Telegram

Frontend is in `public/`; API is `worker/index.js`; database schema is `worker/schema.sql`.

1. `npx wrangler login`
2. `npx wrangler d1 create calculator-logs`
3. Put the returned database ID in `wrangler.toml`.
4. `npx wrangler d1 execute calculator-logs --remote --file=worker/schema.sql`
5. `npx wrangler secret put BOT_TOKEN`
6. `npx wrangler secret put ADMIN_CHAT_ID`
7. `npx wrangler deploy`

For Cloudflare Pages, connect GitHub and set the output directory to `public`.

Important: if Pages and Worker are on different origins, proxy `/api/*` through a Worker/Pages Function or change `fetch('/api/log')` in `public/app.js` to your Worker URL.

The app logs only its own defined events: APP_STARTED, CALCULATION, CALCULATOR_CLEAR and CALCULATION_ERROR. It does not collect SMS, contacts, files, microphone, camera or location.
