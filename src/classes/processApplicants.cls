global class processApplicants implements
Messaging.InboundEmailhandler

{
global Messaging.InboundEmailResult handleInboundEmail 
(Messaging.InboundEmail email,
Messaging.InboundEnvelope env)
{Messaging.InboundEmailResult result = new
messaging.InboundEmailresult();
return result;
}

}