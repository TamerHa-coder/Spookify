import React from 'react';
import mixpanel from 'mixpanel-browser';
import ReactGA from 'react-ga';

mixpanel.init("96dd42dab870fe5e70cdfbd3de8cea53");

function track (){
        mixpanel.track('app launched');


    return (
        <div class="App">
            <button onClick={()=>{
                mixpanel.track('click me button clicked');
            }}>
                Click me!
            </button>
        </div>
    )


}

export default track;