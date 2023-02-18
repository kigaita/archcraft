const SEND_URL = "https://discord.com/api/webhooks/895785139123159050/xhi99WAFUkV4704tVIVO-xgNMV-GhzsHgsHll9SGb_qfwiijk5c88FK02PgzTTTszmJn";
var i = 0

    function logEvery2Seconds(i) {
        setTimeout(() => {
            c    fetch(SEND_URL, {
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
            logEvery2Seconds(++i);
        }, 2000)
    }
    
    logEvery2Seconds(0);
    
    let i = 0;
    setInterval(() => {
        console.log('n:', i++);
    }, 2000)