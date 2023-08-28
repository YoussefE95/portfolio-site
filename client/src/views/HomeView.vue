<script setup>
    import Hero from '../components/home/Hero.vue';
    import About from '../components/home/About.vue';
    import Work from '../components/home/Work.vue';
    import Links from '../components/home/Links.vue';
</script>

<template>
    <main>
        <Hero />
        <About />
        <Work />
        <Links />
    </main>
</template>

<style scoped>
    main {
        min-height: 100vh;
    }
</style>
