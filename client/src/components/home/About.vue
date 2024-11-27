<template>
    <div class="section">
        <p class="text-center section-title">About Me</p>
        <div class="row align-items-center">
            <div
                class="col-sm text-center"
                data-aos="fade-right"
                data-aos-duration="1500"
            >
                <img
                    src="https://www.YoussefElzein.com/static/about-me-pic.jpg"
                />
            </div>
            <div class="col-sm" data-aos="fade-left" data-aos-duration="1500">
                <p>
                    I study Computer Science at California State University Los
                    Angeles. I completed my Bachelor's in May 2023 and will be
                    completing my Master's in May 2025

                    I love software engineering and I am pursuing a career in
                    that field

                    I am currently doing research in applying 
                </p>
            </div>
        </div>
    </div>
</template>

<style scoped>
img {
    max-width: 65%;
    border-radius: 0.75rem;
    filter: drop-shadow(0px 0px 6px black);
}

@media (max-width: 575px) {
    img {
        max-width: 85%;
        margin-bottom: 2rem;
    }
}
</style>
