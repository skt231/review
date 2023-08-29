const form = document.querySelector('#searchForm');
form.addEventListener('submit', async function (e) {
    e.preventDefault();
    const searchTerm = form.elements.query.value;
    const config = { params: { q: searchTerm } }
    // const config = { params: { q: searchTerm ,isFunny='colt'} }
    console.log(searchTerm)
    const res = await axios.get(`https://api.tvmaze.com/search/shows`, config);
    // console.log(res.data[0].show.image.medium);
    makeImg(res.data);
    form.elements.query.value
})

const makeImg = (shows) => {
    for (let result of shows) {
        if (result.show.image) {
            // console.log(result);
            const img = document.createElement('IMG');
            img.src = result.show.image.medium;
            document.body.append(img)
        }
    }
}