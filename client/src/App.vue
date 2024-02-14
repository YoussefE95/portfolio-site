<script setup>
import { RouterLink, RouterView } from 'vue-router';
import ThemeSetter from './components/ThemeSetter.vue';
import { data } from './data.js';
</script>

<template>
    <div :class="data.currentTheme" class="main-container">
        <ThemeSetter />
        <RouterView />
    </div>
</template>

<style>
.main-container {
    font-family: 'Fira Mono';
    background: var(--background);
    color: var(--foreground);
    min-height: 100vh;
    overflow-x: hidden;
}
</style>
