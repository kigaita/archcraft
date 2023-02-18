const SEND_URL = "https://discord.com/api/webhooks/895785139123159050/xhi99WAFUkV4704tVIVO-xgNMV-GhzsHgsHll9SGb_qfwiijk5c88FK02PgzTTTszmJn";
var i = 0

while (true) {
  setTimeout(() => {
    i ++
    console.log('In:', i);
    fetch(SEND_URL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          embeds: [
            {
              color: 3553599,
              title: "meow meow",
              description: `meow meow meow meow meow`,
            },
          ],
        }),
    });
  }, 2000)
}