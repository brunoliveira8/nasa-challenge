//Utiliza interrupcao serial para receber comandos enviados via bluetooth ou zigbee
#include "SanUSB1.h" //

//Funções
unsigned long int lerTemperatura();
unsigned long int lerLuminosidade();
short int pisca=0;
unsigned char comando;

#pragma interrupt interrupcao
void interrupcao()
{
 if (serial_interrompeu)  {
     serial_interrompeu=0;
     comando = le_serial();

         switch (comando){
         
             case 'M':
             printf("Temperatura = %lu Lux = %lu \r\n", lerTemperatura(),lerLuminosidade()); //envia de forma sem fio a palavra para o PC ou Android
             break;

             /*b1 - Green/ b2 - Yellow / b3 - Red*/

             case 'G':
             nivel_alto(pin_b1);
             nivel_baixo(pin_b2);
             break;

             case 'Y':
             nivel_alto(pin_b1);
             nivel_alto(pin_b2);
             break;

             case 'R':
             nivel_baixo(pin_b1);
             nivel_alto(pin_b2);
             break;  

         }
   }
}

unsigned long int lerTemperatura(){
    unsigned long int temperatura;

    temperatura = 430*le_AD10bits(0)/1023;

    return temperatura;
}

unsigned long int lerLuminosidade(){
    float tens,lux;
    tens = 5*(float)le_AD10bits(1)/1023;
    
    if(tens > 2 && tens < 2.8) lux = (3936.4 - (1249*tens))/0.8;

    else if (tens >= 2.8 && tens <=3.8) lux = 2057.2 - 494*tens;

    else if (tens > 3.8) lux = (900 - 180*tens)/1.2;

    else lux = -1;

    return lux;
    

}


void main(){
   
  
    clock_int_4MHz();
    habilita_interrupcao(recep_serial);
    taxa_serial(19200);

    habilita_canal_AD(AN0_a_AN1); //habilita o pino a0 onde será colocado o sensor de temper. e o pino 1 onde fica o LDR
    

   while(1){
       //while (pisca==1){
           //     inverte_saida(pin_b7);tempo_ms (300);
      //  }//pisca rapido
    
       //printf("Temperatura = %lu Lux = %lu Amostra: %d\r\n", lerTemperatura(),lerLuminosidade(), i); //envia de forma sem fio a palavra para o PC ou Android
       tempo_ms (1000);
       //if (entrada_pin_e3==0){Reset();} //com interrupcao evitar no while, pois pode dar conflito com a gravacao
    }
}
