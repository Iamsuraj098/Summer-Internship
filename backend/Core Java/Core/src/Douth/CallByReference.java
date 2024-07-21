package Douth;

public class CallByReference {
	static void change(int[] ar) {
		ar[3] = 100;
	}
	public static void main(String[] args) {
		int arr[] = {1, 2, 3, 4};
		for(int i:arr) {
			System.out.print(" "+ i);
		}
		
//		Method 1
		int arr3[] = arr;
		arr3[2] = 10;
		System.out.print("\n");
		for(int i:arr3) {
			System.out.print(" "+ i);
		}
		
//		Method 2
		change(arr);
		System.out.print("\n");
		for(int i:arr) {
			System.out.print(" "+ i);
		}
		
//		what if we not want to change the value of parent arr then we pass the copy of array
		
		int dammy[] = arr.clone();
		dammy[2] = 900;
		for(int i:dammy) {
			System.out.print(" "+ i);
		}
		for(int i:arr) {
			System.out.print(" "+ i);
		}
		
	}
}
