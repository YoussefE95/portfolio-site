const config = require('./config.json');
const axios = require('axios');

const searchFor = async (type, phrase) => {
    try {
        const response = await axios.get(
            `${config.url}/${type}?name=/${phrase}/i`, {
                headers: { Authorization: `Bearer ${config.auth}` }
            }
        );

        return response.data;
    } catch(error) {
        console.log(error);
    }
};

const getDetails = async (type, id) => {
    try {
        if (type === 'character') {
            const quotesResponse = await axios.get(
                `${config.url}/${type}/${id}/quote`, {
                    headers: { Authorization: `Bearer ${config.auth}` }
                }
            );

            return quotesResponse.data.docs.map((quote) => {
                return { 
                    dialog: quote.dialog, 
                    movie: quote.movie,
                };
            });
        } else {
            return { message: `Details for ${type} not supported` };
        }
    } catch(error) {
        console.log(error);
    }
};

module.exports = {
    searchFor,
    getDetails 
};
