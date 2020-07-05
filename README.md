# README

  <h3>What is this API for? </h3>
  <p>This is a simple API that returns quotes from famous people (Right now it only has John Lennon quotes).
    The data is returned in JSON format. It's free and doesn't need a key.  </p>
  <h3>How to use it?</h3>
  <p>
    <ul>
      <li>The API's endpoint is: <code>/api/v1/</code> or <code>/api/v1/quotes</code> Returns the first 10 quotes in the database.</li>
      <li>To navigate between pages: <code>/api/v1/quotes?page=:number</code></li>
      <li><code>/api/v1/quotes/:id</code> returns the quote that belongs to the id given</li>
      <li>The search function's endpoint is <code>api/v1/search/?q=:person</code>.
        The query only accepts the person name </li>
      <li>The random function returns a random quote and its endpoint is: <code>api/v1/random/</code> </li>
    </ul>

   <h5>Returned fields</h5>
    <ul>
      <li><code>id</code>: The id of the quote</li>
      <li><code>person</code>: Person who belongs the quote</li>
      <li><code>quote</code>: The quote itself</li>
      <li><code>created_at</code>: When was created in the database</li>
      <li><code>updated_at</code>: When was updated in the database</li>
    </ul>
  </p>
  <h3>How to deploy it?</h3>
  <p>
    To test locally, install dependencies using <code>bundle install</code>.
  </p>
  <p>
    After that run the command <code>rails db:migrate</code> to create and initialize the database,
    populate the database with <code>rails db:seed</code> and then run the API using <code>rails s</code> or
    <code>rails server</code>.
  </p>
  <p>
    The API will be running on <code>localhost:3000</code>.
  </p>
  <small>
    <p>
      Ruby version 2.6.4
      Ruby on Rails 6
      SQLite for development
      PostgreSql for production
    </p>
  </small>
