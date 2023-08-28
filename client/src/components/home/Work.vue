<script setup>
    import projects from '../../assets/work.json';
    import Card from './Card.vue';
</script>

<template>
    <div class='work section' data-aos='fade-in' data-aos-duration='1200'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <p class='title'>
                    My Work
                </p>
            </div>
        </div>
        <div class='columns is-centered'>
            <div class='column has-text-centered is-4-tablet is-4-desktop is-3-fullhd'
                 data-aos='fade-right' data-aos-duration='1200'>
                <Card v-bind="projects.moonTrek" />
            </div>
            <div class='column has-text-centered is-4-tablet is-4-desktop is-3-fullhd'
                 data-aos='fade-up' data-aos-duration='1200'>
                <Card v-bind="projects.middleEarthInfo" />
            </div>
            <div class='column has-text-centered is-4-tablet is-4-desktop is-3-fullhd'
                 data-aos='fade-left' data-aos-duration='1200'>
                <Card v-bind="projects.portfolioSite" />
            </div>
        </div>
    </div>
</template>

<style scoped>
    .work, .title {
        color: var(--foreground);
        background: var(--background);
    }
</style>
