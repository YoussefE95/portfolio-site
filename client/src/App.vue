<script setup>
    import { RouterView } from 'vue-router';
    import { isLit } from './components/store.js';
    import ThemeSetter from './components/ThemeSetter.vue';
</script>

<template>
    <ThemeSetter />
    <div :class='{ lit: isLit }'>
        <RouterView />
    </div>
</template>
