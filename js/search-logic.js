
    // Fetch the search index
    async function fetchSearchIndex() {
        const response = await fetch('js/search-index.json'); // Adjust the path as needed
        return await response.json();
    }

    // Perform the search
    function search(query, index) {
        const results = index.filter(item => 
            item.title.toLowerCase().includes(query.toLowerCase()) ||
            item.description.toLowerCase().includes(query.toLowerCase())
        );
        return results;
    }

    // Display search results
    function displayResults(results) {
        const resultsContainer = document.getElementById('search-results');
        resultsContainer.innerHTML = results.map(result => `
            <div class="result">
                <a href="${result.url}">
                    <h3>${result.title}</h3>
                    <p>${result.description}</p>
                </a>
            </div>
        `).join('');
    }

    // Handle search input
    document.getElementById('search').addEventListener('input', async (event) => {
        const query = event.target.value;
        if (query.length < 2) {
            document.getElementById('search-results').innerHTML = ''; // Clear results for short queries
            return;
        }

        const index = await fetchSearchIndex();
        const results = search(query, index);
        displayResults(results);
    });
