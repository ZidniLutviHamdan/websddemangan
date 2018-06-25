<?php
	$pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
			$pdf->SetTitle('Daftar Produk');
			$pdf->SetTopMargin(20);
			$pdf->SetAutoPageBreak(true);
			$pdf->SetAuthor('Author');
			$pdf->SetDisplayMode('real', 'default');
			$pdf->AddPage();
			$i=0;
			$html='<h3>Daftar Produk</h3>
					<table cellspacing="1" bgcolor="#666666" cellpadding="2">
						<tr bgcolor="#ffffff">
							<th width="5%" align="center">No</th>
							<th width="35%" align="center">Nama Produk</th>
						</tr>';
			foreach ($siswa as $row) 
				{
					$i++;
					$html.='<tr bgcolor="#ffffff">
							<td align="center">'.$i.'</td>
							<td>'.$row['nis'].'</td>
							<td>'.$row['nama_siswa'].'</td>
						</tr>';
				}
			$html.='</table>';
			$pdf->writeHTML($html, true, false,'');
			$pdf->Output('daftar_produk.pdf', 'I');
?>