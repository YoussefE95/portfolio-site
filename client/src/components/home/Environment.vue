<script setup>
import { colors } from '../../data.js';
</script>

<template>
    <div class="section">
        <p class="text-center section-title">My Development Environment</p>
        <div
            class="row align-items-center"
            data-aos="fade-in" data-aos-duration="1500"
        >
            <div class="col text-center">
                <img :src="`https://www.YoussefElzein.com/static/${colors.theme}${colors.isLit ? '-Light' : ''}.png`" />
            </div>
        </div>
        <div
            class="row align-items-center justify-content-center"
        >
            <div class="col-6 col-md-3 text-center">
                <select class="form-select" v-model="colors.theme">
                    <option value="Catppuccin">Catppuccin</option>
                    <option value="Gruvbox">Gruvbox</option>
                </select> 
            </div>
            <div class="col-4 col-md-1 text-center">
                <div class="form-check form-switch">
                    <input
                        class="form-check-input"
                        type="checkbox"
                        id="lightSwitch"
                        v-model="colors.isLit"
                    >
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
