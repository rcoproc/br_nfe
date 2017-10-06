module BrNfe
	module Service
		module Betha
			module V1
				class Gateway < BrNfe::Service::Betha::Base
					def message_namespaces
            {"xmlns" => "http://www.abrasf.org.br/nfse.xsd"}
					end

					def soap_namespaces
						super.merge(message_namespaces)
					end

					def namespace_identifier
						''
					end

					def xml_current_dir_path
						["#{BrNfe.root}/lib/br_nfe/service/betha/v1/xml"]+super
					end
				end
			end
		end
	end
end
