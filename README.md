

<h1 align="center">React Native ios Volume</h1>
<p align="center">A library that controls 'ios device' volume.</p>
<p align="center">Physical Device 'Only'</p>

# react-native-ios-volume

## Getting started

`$ npm install react-native-ios-volume --save`

### Mostly automatic installation

`$ react-native link react-native-ios-volume`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ios-volume` and add `RNIosVolume.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIosVolume.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<




## Usage
```javascript

import RNIosVolume from 'react-native-ios-volume';
import React, {Component} from 'react';

class VolumeTest extends Component {
  constructor(props) {
    super(props);
    RNIosVolume.onVolumeChange = e=>{
      console.log(`onChange===${e.volume}===`);
    };
  }
  componentDidMount(){
    console.log("testing start");
    RNIosVolume.getVolume().then(e=>{
      console.log(`onGet===${e}===`);
    });
    RNIosVolume.setVolume(1);
    RNIosVolume.setVolume(0.2);
    RNIosVolume.setVolume(0.5);
  }
  
  ...
}
```


<h2 align="center">API</h2>
<p align="center">Static access to the RNIosVolume API.</p>

Method Name                 | Description                                                                         | Platform
--------------------------- | ----------------------------------------------------------------------------------- | --------
RNIosVolume.getVolume()     | Get a promise that return volume .2f float value          						  |  iOS
RNIosVolume.setVolume()		| Set a number to your device on volume  											  |  iOS


<h2 align="center">Events</h2>
<p align="center">Callbacks that are invoked when a native event emitted.</p>
Event Name                          | Description                                            | Event                                           | Platform
----------------------------------- | ------------------------------------------------------ | ----------------------------------------------- | --------
RNIosVolume.onChangeVolume(event)   | Invoked when ios system volume is changed       		 | `event.volume`  		                           |  iOS

<h2 align="center">Contibutors</h2>

* @pohsiu
* @zxcal



  