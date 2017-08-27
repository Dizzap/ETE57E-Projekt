using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Drawing;


namespace PDFEditor {
    public partial class Form1 : Form {
        public Form1() {
            InitializeComponent();
            
        }
        private void EditButton_Click(object sender, EventArgs e) {
            string InputFilePath = textBox1.Text;            
            string OutputFilePath = OutputPathBox.Text;
            string ImagePath = ImagePathBox.Text;

            using (Stream inputPdfStream = new FileStream(InputFilePath, FileMode.Open, FileAccess.Read, FileShare.Read))
            using (Stream inputImageStream = new FileStream(ImagePath, FileMode.Open, FileAccess.Read, FileShare.Read))
            using (Stream outputPdfStream = new FileStream(OutputFilePath, FileMode.Create, FileAccess.Write, FileShare.None)) {
                var reader = new PdfReader(inputPdfStream);
                var stamper = new PdfStamper(reader, outputPdfStream);
                var pdfContentByte = stamper.GetOverContent(1);

                iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(inputImageStream);
                image.SetAbsolutePosition(Convert.ToInt32(XPositionBox.Text),Convert.ToInt32(YPositionBox.Text));
                pdfContentByte.AddImage(image);
                stamper.Close();
            }            
        }

        private void CloseButton_Click(object sender, EventArgs e) {
            Application.Exit();
        }
        private void button1_Click(object sender, EventArgs e) {
            string InputFilePath = textBox1.Text;
            string InputText = InputTextBox.Text;
            string OutputFilePath = OutputPathBox.Text;
            using (Stream inputPdfStream = new FileStream(InputFilePath, FileMode.Open, FileAccess.Read, FileShare.Read))
            //using (Stream inputImageStream = new FileStream(@"C:\Programmin\printDirigent\Grafika\pd-logo-small2.jpg", FileMode.Open, FileAccess.Read, FileShare.Read))
            using (Stream outputPdfStream = new FileStream(OutputFilePath, FileMode.Create, FileAccess.Write, FileShare.None)) {
                var reader = new PdfReader(inputPdfStream);
                var stamper = new PdfStamper(reader, outputPdfStream);                
                var cb = stamper.GetOverContent(1);
                cb.BeginText();
                BaseFont f_cn = BaseFont.CreateFont("c:\\windows\\fonts\\calibri.ttf", BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
                cb.SetFontAndSize(f_cn, 20);
                cb.SetTextMatrix(Convert.ToInt32(XPositionBox.Text), Convert.ToInt32(YPositionBox.Text));  //(xPos, yPos)
                cb.ShowText(InputTextBox.Text);
                cb.EndText();
                stamper.Close();
                reader.Close();
            }
        }        
    }
}

