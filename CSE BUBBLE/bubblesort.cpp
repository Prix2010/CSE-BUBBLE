#include<bits/stdc++.h>
using namespace std;

void swap(int*a,int*b){
    int temp = *a;
    *a = *b;
    *b = temp;

}


int main(){
    int n;
    cin >> n;

    int array[n];
    for(int i = 0 ; i < n ; i ++)cin >> array[i];


    for(int i = 0 ; i < n ; i ++){
        for(int j = i+1 ; j < n ; j ++){
            if(array[i] > array[j])swap(array+i,array+j);
        }
        cout << array[i] << endl;
    }

    return 0;
}