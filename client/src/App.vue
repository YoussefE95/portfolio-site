<script setup>
    import { RouterView } from 'vue-router';
    import { isLit } from './components/store.js';
    import NavBar from './components/NavBar.vue';
</script>

<template>
    <div :class='{ lit: isLit }'>
        <NavBar />
        <RouterView />
    </div>
</template>