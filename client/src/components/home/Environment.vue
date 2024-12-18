<script setup>
import { colors } from '../../data.js';
import { ref } from 'vue';

const carousel = ref(1);

const prev = () => {
    if (carousel.value !== 1) {
        carousel.value--;
    } else {
        carousel.value = 3;
    }
};

const next = () => {
    if (carousel.value !== 3) {
        carousel.value++;
    } else {
        carousel.value = 1;
    }
};
</script>

<template>
    <div class="section">
        <p class="text-center section-title">My Development Environment</p>
        <div class="row align-items-center" data-aos="fade-in" data-aos-duration="1500">
            <div class="col text-center">
                <div id="env-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item" :class="carousel === 1 ? 'active' : ''">
                            <img class="d-block w-100" :src="`https://www.YoussefElzein.com/static/screenshots/${colors.theme}-Dev${colors.isLit ? '-Light' : ''}.png`" alt="First slide">
                        </div>
                        <div class="carousel-item" :class="carousel === 2 ? 'active' : ''">
                            <img class="d-block w-100" :src="`https://www.YoussefElzein.com/static/screenshots/${colors.theme}-Social${colors.isLit ? '-Light' : ''}.png`" alt="Second slide">
                        </div>
                        <div class="carousel-item" :class="carousel === 3 ? 'active' : ''">
                            <img class="d-block w-100" :src="`https://www.YoussefElzein.com/static/screenshots/${colors.theme}-System${colors.isLit ? '-Light' : ''}.png`" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#env-carousel" role="button" data-slide="prev" @click="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#env-carousel" role="button" data-slide="next" @click="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center justify-content-center">
            <div class="col-5 col-md-3 text-center">
                <select class="form-select" v-model="colors.theme">
                    <option value="Catppuccin">Catppuccin</option>
                    <option value="Gruvbox">Gruvbox</option>
                </select> 
            </div>
            <div class="col-4 col-md-1 text-center">
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="lightSwitch" v-model="colors.isLit">
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
img {
    max-width: 95%;
    border-radius: 0.5rem;
    filter: drop-shadow(0px 0px 6px black); 
}

select,
.form-check-input {
    border-color: var(--backgroundAlt);
    margin: 1rem 0rem 0rem 0rem;
}

select {
    background: var(--backgroundAlt);
    color: var(--foreground);
}

.form-check-input {
    background-color: var(--backgroundAlt);
    transition: all 0.5s ease;
}

.form-check-input:checked {
    background-color: var(--orange);
    border-color: var(--orange); 
}
</style>
