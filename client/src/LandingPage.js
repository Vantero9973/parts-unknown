export default function LandingPage() {
  return (
    <>
      <div
        style={{
          position: "absolute",
          marginTop: "35vh",
          marginLeft: "29.5vw",
        }}
      >
        <input
          style={{
            width: "40vw",
            height: "8vh",
            borderRadius: "50px",
            fontSize: "32px",
            padding: "25px",
          }}
          type="text"
          placeholder="Where do you want to go next?"
          className="input input-bordered"
        />
      </div>
      <div
        style={{
          width: "33.33%",
          height: "80vh",
          float: "left",
          backgroundImage:
            "url(https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg)",
          backgroundSize: "cover",
          backgroundRepeat: "no-repeat",
          backgroundPosition: "center",
        }}
      />
      <div
        style={{
          width: "33.33%",
          height: "80vh",
          float: "left",
          backgroundImage:
            "url(https://images.unsplash.com/photo-1599161954112-300ca11ca7da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnRhaW4lMjByaXZlcnxlbnwwfHwwfHw%3D&w=1000&q=80)",
          backgroundSize: "cover",
          backgroundRepeat: "no-repeat",
          backgroundPosition: "center",
        }}
      />
      <div
        style={{
          width: "33.33%",
          height: "80vh",
          float: "left",
          backgroundImage:
            "url(https://images.creativemarket.com/0.1.0/ps/2658608/1360/906/m1/fpnw/wm1/qpi4njfe11j9ptrugut4unwpwk19ovybjkxgs0gjrh8m0bh2exhpepi0mkkg7yrg-.jpg?1494287320&s=603a080e008dd082036777fde10dc8f8)",
          backgroundSize: "cover",
          backgroundRepeat: "no-repeat",
          backgroundPosition: "center",
        }}
      />
    </>
  );
}
