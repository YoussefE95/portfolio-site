<template>
    <div class='hero'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='title'>
                    Lord of the Rings Info
                </p>
                <p class='description'>
                    this page provides information about the lord of the rings and the
                    hobbit movies, along with all the characters in middle earth who
                    made appearances in those movies. all of this data is provided by
                    <a href='https://the-one-api.dev/'
                       target='_blank'
                       rel='noopener noreferrer'>
                        the one api to rule them all
                    </a>
                </p>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .hero {
        font-family: RingBearer Medium;
        background-image: linear-gradient(
            135deg,
            var(--cardGrad),
            var(--cardGrad)
        ), var(--lotrHeroImage);
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
        padding: 9rem 3rem;
    }

    .title {
        color: var(--heroText);
        font-size: 3rem;
    }

    .description {
        color: var(--heroText);
        font-size: 1.25rem;
    }

    a {
        color: var(--blue);
    }

    a:hover {
        color: var(--magenta);
    }
</style>
