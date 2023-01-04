export default function Cancel() {
  return (
    <div
      style={{
        minWidth: "100vw",
        minHeight: "50vh",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <h1 style={{ color: "#dadada", fontSize: "32px" }}>
        Sorry to see you cancelled your Stripe payment!
      </h1>
    </div>
  );
}
