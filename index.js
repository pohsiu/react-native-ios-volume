
import { NativeModules, NativeEventEmitter } from 'react-native';

const { RNIosVolume } = NativeModules;

class RNVolume{
  
    constructor(){
        const RNIosVolumeEmitter = new NativeEventEmitter(NativeModules.RNIosVolume);
        RNIosVolumeEmitter.addListener("volumeChanged",this._onVolumeChange.bind(this));
    }
    getVolume(){
        return new Promise((resolve, reject)=>{
            RNIosVolume.getVolume(e=>{
            if(e){
                resolve(e);
            }
            else{
                console.log("error");
            }
            });
        }
        );
    }
    setVolume(value){
        RNIosVolume.setVolume(parseFloat(value));
    }
    
    _onVolumeChange(e){
        if(this.onVolumeChange){
            this.onVolumeChange(e);
        }
    }

    
    
}

export default new RNVolume();
