const router = require('express').Router();
const middleEarth = require('lotr-api');

router.get('/:type', async (req, res) => {
    try {
        const { type } = req.params;
        const { phrase } = req.query;
        const searchQuery = await middleEarth.searchFor(type, phrase);

        if(searchQuery.total >= 1) {
            res.status(200).json({
                resultCount: searchQuery.total,
                results: searchQuery.docs,
            });
        } else {
            res.status(200).json({ resultCount: 0 });
        }
    } catch (err) {
        res.status(500).json(err);
    }
});

router.get('/:type/details', async (req, res) => {
    try {
        const { type } = req.params;
        const { id } = req.query;
        const detailsQuery = await middleEarth.getDetails(type, id);

        res.status(200).json(detailsQuery);
    } catch(err) {
        res.status(500).json(err);
    }
});

module.exports = router;
