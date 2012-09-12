<!--
/*
* Módulo de Pagamento Boleto Bancário Caixa E.F.
* Feito sobre OpenCart 1.5.1.3
* Autor Original Leonardo Ribeiro - leovicio@pop.com.br
* Modificado e Atualizado para 1.5.1.3 por Guilherme Desimon - http://www.desimon.net
* TPL version por jucieniofreitas - http://www.opencartbrasil.com.br/forum/memberlist.php?mode=viewprofile&u=9678
* @01/2012
* Sob licença GPL.
*/-->
<h2><?php echo $text_instruction; ?></h2><br />
<h3><?php echo $text_payment; ?></h3><br />
</div>
<div class="buttons">
<div class="right"><a id="button-confirm" class="button" href="index.php?route=payment/boleto_cef_sigcb/callback&order_id=<?php echo $idboleto; ?>" target="_blank"><span><?php echo $button_continue; ?></span></a></div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
  $.ajax({
    type: 'GET',
    url: 'index.php?route=payment/boleto_cef_sigcb/confirm',
    success: function() {
      location = '<?php echo $continue; ?>';
    }
  });
});
--></script>