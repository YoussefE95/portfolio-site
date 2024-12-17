<script setup>
import { colors } from '../data.js';

const changeTheme = () => {
    if (colors.theme === 'Catppuccin') {
        colors.theme = 'Gruvbox';
    } else {
        colors.theme = 'Catppuccin';
    }
};
</script>

<template>
    <div class="theme-setter-window">
        <i
            @click="colors.isLit = !colors.isLit"
            :class="colors.isLit ? 'lit' : ''"
            class="fa-solid fa-lightbulb"
        ></i>
        <i
            @click="changeTheme"
            i class="fa-solid fa-palette"
        ></i>
    </div>
</template>

<style scoped>
.theme-setter-window {
    position: absolute;
    top: 0.25rem;
    left: 0.25rem;
    padding: 0.5rem;
    border-radius: 0.5rem;
    background: var(--background);
}

.fa-lightbulb,
.fa-palette {
    font-size: 2rem;
    color: var(--foregroundAlt);
    margin: 0rem .25rem;
}

.lit {
    color: var(--orange);
}
</style>
