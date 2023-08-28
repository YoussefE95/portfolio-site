<script setup>
    const props = defineProps([
        'name',
        'runtimeInMinutes',
        'rottenTomatoesScore',
        'academyAwardWins',
        'academyAwardNominations',
        'boxOfficeRevenueInMillions',
        'budgetInMillions'
    ]);
</script>

<template>
    <p class='name'>{{ name }}</p>
    <p>run time: {{ runtimeInMinutes }} mins</p>
    <p>
        won {{ academyAwardWins }} academy awards of
        {{ academyAwardNominations }} nominations   
    </p>
    <p>
        made {{ boxOfficeRevenueInMillions }} million with a
        budget of {{ budgetInMillions }} million
    </p>
</template>

<style scoped>
    .name, p {
        font-family: RingBearer Medium;
        color: var(--foreground);
    }

    .name {
        font-weight: bold;
        font-size: 1.5rem;
        margin-bottom: .75rem;
    }

    p {
        font-size: 1.15rem;
    }
</style>
