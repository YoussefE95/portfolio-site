<template>
    <div class='hero'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='hero-name'>
                    Youssef Elzein
                </p>
            </div>
        </div>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='hero-title'>
                    A Software Engineer
                </p>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .hero {
        background: linear-gradient(
            135deg,
            var(--heroGradOne),
            var(--heroGradTwo)
        ), var(--heroImage);
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
        padding: 9rem 0rem 9rem 0rem;
    }

    .hero-name {
        font-family: Caveat, sans-serif;
        font-weight: bold;
        font-size: 5rem;
        transform: rotate(-5deg);
        color: var(--heroText);
        margin-bottom: -1.5rem;
    }

    .hero-title {
        font-family: Roboto;
        font-size: 2rem;
        color: var(--heroText);
    }
</style>
