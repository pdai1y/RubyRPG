module Entity
  class User < Base

    expose :_id, documentation: {type: "string", desc: "BSON id"}, format_with: :to_string
    expose :authentication_token, documentation: {type: "string", desc: "List title"}
    expose :email, documentation: {type: "string", desc: "Mark as complete"}

    with_options(format_with: :iso_timestamp) do
      expose :created_at, documentation: {type: "DateTime", desc: "List created at "}
    end
  end
end