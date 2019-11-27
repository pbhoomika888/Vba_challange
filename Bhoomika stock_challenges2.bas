Attribute VB_Name = "Module2"
Option Explicit

Sub stock_challenge():
    
    Dim i As Long
    
    Dim j As Integer
 
    Dim high_num As Double
    
    Dim low_num As Double
   
    Dim LastRow As Long
    
    Dim ws As Worksheet

    Dim high_ticker As String
    
    Dim low_ticker As String
    
    Dim k As Integer

    For Each ws In Worksheets
        
        ws.Cells(1, 15).Value = "Ticker"
        ws.Cells(1, 16).Value = "Value"
        ws.Cells(2, 14).Value = "Greatest % Increase"
        ws.Cells(3, 14).Value = "Greatest % Decrease"
        ws.Cells(4, 14).Value = "Greatest Total Volume"
        ws.Cells(5, 14).Value = "Least Total Volume"

        k = 0
        high_num = 0
        low_num = 0
      
        LastRow = ws.Cells(Rows.Count, 9).End(xlUp).Row

     
        For j = 11 To 12
            
            For i = 2 To LastRow
                
                If ws.Cells(i, j).Value > high_num Then
           
                    high_num = ws.Cells(i, j).Value
                    high_ticker = ws.Cells(i, 9).Value
                Else
                End If
               
                If ws.Cells(i, j).Value < low_num Then
                    low_num = ws.Cells(i, j).Value
                    low_ticker = ws.Cells(i, 9).Value
                Else
                End If

            Next i

        ws.Cells(2 + k, 15).Value = high_ticker
        ws.Cells(2 + k, 16).Value = high_num
        
        ws.Cells(3 + k, 15).Value = low_ticker
        ws.Cells(3 + k, 16).Value = low_num
   
        high_ticker = "None"
        low_ticker = "None"
        high_num = 0
        low_num = 0
        
        k = k + 2
        Next j
   
    ws.Range("N5:P5").Value = ""
    
    ws.Range("P2:P3").NumberFormat = "0.00%"
    Next ws
End Sub




