export default function Export(){
  function submit(e){
    e.preventDefault();
    const from = e.target.from.value;
    const to = e.target.to.value;
    window.location = `/api/export?from=${from}&to=${to}`;
  }
  return (
    <main style={{padding:24,fontFamily:'system-ui'}}>
      <h1>Export ZIP by Date Range</h1>
      <form onSubmit={submit}>
        <input type="date" name="from" required />{" "}
        <input type="date" name="to" required />{" "}
        <button type="submit">Download</button>
      </form>
    </main>
  );
}
