import nodemailer from 'nodemailer';

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).send({ message: 'Only POST requests allowed' });
  }

  const { name, email, subject, message } = req.body;

  // Config dyal Gmail
  const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'badraddineaadou@gmail.com', // L-mail dyalk
      pass: 'YOUR_APP_PASSWORD',        // Ha mnin tjibha: https://myaccount.google.com
    },
  });

  try {
    await transporter.sendMail({
      from: email,
      to: 'badraddineaadou@gmail.com',
      subject: `Portfolio: ${subject}`,
      text: `Name: ${name}\nEmail: ${email}\n\n${message}`,
    });
    return res.status(200).json({ status: 'OK' });
  } catch (error) {
    return res.status(500).json({ error: error.message });
  }
}
