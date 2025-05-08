package ch01;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int count = sc.nextInt();
		for(int i=1;i<=count;i++) {
			for(int j=1;j<=count-1;j++) {
				System.out.print(" ");
			}
			for(int k=i; k<=count;k++) {
				System.out.print("*");
			}
			
			System.out.println();
		}
		
		
		
		sc.close();
	}

}
