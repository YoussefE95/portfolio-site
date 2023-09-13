<template>
    <div class='links section' data-aos='fade-in' data-aos-duration='1200'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='title'>
                    My Links
                </p>
            </div>
        </div>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <a href='https://www.YoussefElzein.com/static/Resume.pdf'>
                    <i id='icon'
                       class='fa-solid fa-file-invoice'
                       data-aos='fade-up-right'
                       data-aos-duration='1200'>
                    </i>
                </a>
                <a href='https://www.YoussefElzein.com/static/BA_eDiploma.pdf'>
                    <i
                       class='fa-solid fa-graduation-cap'
                       data-aos='fade-up'
                       data-aos-duration='1200'>
                    </i>
                </a>
                <a href='https://www.github.com/YoussefE95' rel='noopener noreferrer'>
                    <i
                       class='fa-brands fa-github-square'
                       data-aos='fade-up'
                       data-aos-duration='1200'>
                    </i>
                </a>
                <a href='https://www.linkedin.com/in/youssef-elzein-931713220/' rel='noopener noreferrer'>
                    <i
                       class='fa-brands fa-linkedin'
                       data-aos='fade-up-left'
                       data-aos-duration='1200'>
                    </i>
                </a>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .links, .title {
        color: var(--foreground);
        background: var(--backgroundAlt); 
    }

    .links {
        padding: 9rem 1rem 9rem 1rem;
    }

    i {
        color: var(--blue);
        font-size: 4.5rem;
        margin: 0rem .75rem 0rem .75rem;
    }

    i:hover {
        color: var(--magenta);
    }
</style>
