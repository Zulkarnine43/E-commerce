@extends('home.headerFooter')
@section('body')

    <style>
      .si{
          font-size: 20px;
          font-weight: bold;
          letter-spacing: 1.4px;
          line-height: 40px;
          text-indent: 0px;
          alignment: left;
          text-align: left;
      }
        .co{
            color: black;
            background-color: darkgray;
            text-transform: uppercase;
            font-style: italic;
            text-align: center;
        }
    </style>

    <section class="wedo py-5" id="services">
        <div class="container py-lg-5">
            <div class="w3l_head1">
                <h3 class="heading text-center " style="background-color:darkgray; color: black"> Services</h3>
                    <p class="subs1 mt-4 text-center mx-auto si">As our name implies, Agricultural Services, Inc. is a service oriented company. Our business model requires that we be the best crop production specialists in our trade areas. Agricultural Services does not merely sell crop input commodities. We sell total crop production that provides our customers the best total value for dollars spent on crop inputs!</p>
            </div>
            <div class="row about-info-grids text-center py-lg-5 py-3 mt-3">
                <div class="col-md-4 about-info about-info1">
                    <span class="fa fa-tint"></span>
                    <h4 class="si co">About Agricultural Services</h4>
                    <p class="si">Established in 2019, Agricultural Services is an employee-owned company with a single goal: to help our customers raise the best crops possible. Our agronomy facilities are conveniently located in seven central Nebraska locations.</p>
                </div>
                <div class="col-md-4 about-info about-info2">
                    <span class="fa fa-leaf"></span>
                    <h4 class="si co ">Mission Statement</h4>
                    <p class="si">Agricultural Services, Inc. is the crop production specilalist providing area producers the best customer service and quality products to grow high yields.</p>
                </div>
                <div class="col-md-4 about-info about-info3">
                    <span class="fa fa-pagelines"></span>
                    <h4 class="si co">Services That Set Us Apart</h4>
                    <p class="si ">Timely information can be key to managing through crop production issues. Our “Field Tracker” database application enables our agronomists to do just that:

                        Crop fertility recommendations tailored to individual fields
                        State of the art on-line database infrastructure that allows our agronomists access to our customers field information, from anyplace, at any time
                        Integrated field scouting modules capable of electronically relaying strategic information to our growers in a timely manner
                        Fields need to be observed on a regular basis. We accept that responsibility. Therein lies the value that growers have come to realize from Agricultural Services, Inc.</p>
                </div>
            </div>
        </div>
    </section>
    @endsection
