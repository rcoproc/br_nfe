#encoding UTF-8
module BrNfe
	module Service
		module Response
			module Build
				class ConsultaNfsPorRps  < BrNfe::Service::Response::Build::InvoiceBuild
					def default_values
						super.merge({
							message_errors_path: [:consultar_nfse_rps_resposta, :lista_mensagem_retorno, :mensagem_retorno],
							invoices_path:       [:consultar_nfse_rps_resposta, :compl_nfse],
						})
					end

					def response
						@response ||= BrNfe::Service::Response::ConsultaNfsPorRps.new({
							original_xml:     savon_response.xml.force_encoding('UTF-8'),
							error_messages:   get_message_for_path(message_errors_path),
							notas_fiscais:    get_invoices,
						})
					end
				end
			end
		end
	end
end