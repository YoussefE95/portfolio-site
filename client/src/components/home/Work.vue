<template>
    <div class="section" data-aos="fade-in" data-aos-duration="1500">
        <p class="text-center section-title">My Work</p>
        <div class="row justify-content-center">
            <div
                class="col-md card"
                data-aos="fade-right"
                data-aos-duration="1500"
            >
                <div class="card-body">
                    <p class="card-title">Moon Trek Telescope Integration</p>
                    <p class="card-text">
                        A web application for overlaying Nasa collected data on
                        top of your images of the Moon taken with a telescope
                    </p>
                    <a
                        href="https://github.com/YoussefE95/Moon-Trek-CSULA"
                        target="_blank"
                        class="card-link"
                        >Github</a
                    >
                </div>
            </div>
            <div
                class="col-md card"
                data-aos="fade-left"
                data-aos-duration="1500"
            >
                <div class="card-body">
                    <p class="card-title">Middle Earth Info</p>
                    <p class="card-text">
                        A CLI application for getting information about The Lord
                        of the Rings books, movies, and characters using The One
                        API to Rule Them All
                    </p>
                    <a
                        href="https://github.com/YoussefE95/middle-earth-info"
                        target="_blank"
                        class="card-link"
                        >Github</a
                    >
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div
                class="col-md card"
                data-aos="fade-right"
                data-aos-duration="1500"
            >
                <div class="card-body">
                    <p class="card-title">What's Due Canvas?</p>
                    <p class="card-text">
                        A FireFox extension which allows you to check upcoming
                        assignments on Canvas and also attach personal notes to
                        each assignment for tracking progress
                    </p>
                    <a
                        href="https://github.com/YoussefE95/whats-due-canvas"
                        target="_blank"
                        class="card-link"
                        >Github</a
                    >
                </div>
            </div>
            <div
                class="col-md card"
                data-aos="fade-left"
                data-aos-duration="1500"
            >
                <div class="card-body">
                    <p class="card-title">TCP Chatting Application</p>
                    <p class="card-text">
                        A Chat Application for Remote Message Exchange
                    </p>
                    <a
                        href="https://github.com/YoussefE95/chatter-tcp"
                        target="_blank"
                        class="card-link"
                        >Github</a
                    >
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.section {
    background: var(--backgroundAlt);
}

.card {
    margin: 1rem;
    --bs-card-bg: var(--background);
    --bs-card-color: var(--foreground);
}

.card-title {
    font-weight: bold;
}

.card-link {
    color: var(--blue);
}

.card-link:hover {
    color: var(--purple);
}
</style>
