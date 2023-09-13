<script setup>
import { data } from '../../components/trekData.js'
import ModelGenerator from '../../components/moon-trek/ModelGenerator.vue'
</script>

<template>
    <main>
        <div v-if="data.timeStamp !== ''">
            <ModelGenerator mode="animate" />
        </div>
    </main>
</template>

<style scoped>
main {
    background: var(--backgroundAlt);
    color: var(--foreground);
    min-height: 100vh;
    padding: 1rem;
}
</style>
