<template>
    <div class='about section'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='title'>
                    About Me
                </p>
            </div>
        </div>
        <div class='columns is-centered is-vcentered'>
            <div class='column has-text-centered is-5-tablet is-4-desktop is-3-fullhd'>
                <img class='selfie' alt='selfie'
                     src='https://www.YoussefElzein.com/static/moon-trek-poster.jpg'
                     data-aos='fade-right' data-aos-duration='1200'
                />
            </div>
            <div class='column is-7-tablet is-5-desktop is-5-fullhd'>
                <p class='description' data-aos='fade-left' data-aos-duration='1200'>
                    Hello, I'm Youssef! I was born and raised in California and I
                    study Computer Science at California State University Los
                    Angeles. I completed my Bachelor's in May 2023 and will be
                    completing my Master's in May 2025. I love software engineering
                    and I am pursuing a career in that field.
                </p>
            </div>
       </div>
    </div>
</template>

<style scoped>
    .about, .title {
        color: var(--foreground);
        background: var(--backgroundAlt);
    }

    .selfie {
        margin: .5rem;
        border-radius: .65rem;
        box-shadow: 0px 0px 14px var(--black);
    }

    .description {
        font-size: 1.35rem;
    }
</style>
