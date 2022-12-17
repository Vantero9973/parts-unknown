import AutosuggestPage from "./AutosuggestPage";

export default function BlogImages() {
  return (
    <div>
      {/* <div style={{ position: "absolute" }}>
          {blogs.map((blog) => {
            return (
              <div>
                <a
                  href="/stories"
                  className="landingImage"
                  style={{
                    width: "33.33%",
                    height: "80vh",
                    float: "left",
                    backgroundImage:
                      "url({https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75})",
                    backgroundSize: "cover",
                    backgroundRepeat: "no-repeat",
                    backgroundPosition: "center",
                  }}
                ></a>
                <p
                  style={{
                    color: "white",
                    display: "flex",
                    alignItems: "flex-end",
                    height: "80vh",
                    width: "25vw",
                    fontFamily: "Roboto, sans-serif",
                    fontSize: "36px",
                    fontWeight: "bold",
                    webkitTextStroke: "1px black",
                  }}
                >
                  {blog.title}
                </p>
              </div>
            );
          })}
        </div> */}
      <div
        style={{
          position: "absolute",
          marginTop: "35vh",
          marginLeft: "30vw",
          zIndex: "1000",
          fontSize: "32px",
        }}
      >
        {/* <input
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
          /> */}
        <AutosuggestPage />
      </div>
      <div>
        <a
          href="/stories"
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        ></a>
      </div>
      <div>
        <a
          href="/stories"
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-12%2FItaly-Sicily-Taormina-Sun_Shine-shutterstock_1760426138-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        />
      </div>
      <div>
        <a
          href="/stories"
          className="landingImage"
          style={{
            width: "33.33%",
            height: "80vh",
            float: "left",
            backgroundImage:
              "url(https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-01%2FIceland-Westfjord-Jan-Jerman-shutterstock_1879846174-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75)",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
          }}
        />
      </div>
    </div>
  );
}
