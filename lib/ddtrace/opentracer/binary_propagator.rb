module Datadog
  module OpenTracer
    # OpenTracing propagator for Datadog::OpenTracer::Tracer
    module BinaryPropagator
      extend Propagator

      # Inject a SpanContext into the given carrier
      #
      # @param span_context [SpanContext]
      # @param carrier [Carrier] A carrier object of Binary type
      def inject(span_context, carrier)
        nil
      end

      # Extract a SpanContext in Binary format from the given carrier.
      #
      # @param carrier [Carrier] A carrier object of Binary type
      # @return [SpanContext, nil] the extracted SpanContext or nil if none could be found
      def extract(carrier)
        SpanContext::NOOP_INSTANCE
      end
    end
  end
end
