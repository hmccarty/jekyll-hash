require "openssl"

module Jekyll
    module HashFilter
        # SHA
        def sha_224(input)
            OpenSSL::Digest.new('SHA224').hexdigest(input)
        end

        def sha_256(input)
            OpenSSL::Digest.new('SHA256').hexdigest(input)
        end

        def sha_384(input)
            OpenSSL::Digest.new('SHA384').hexdigest(input)
        end

        def sha_512(input)
            OpenSSL::Digest.new('SHA512').hexdigest(input)
        end

        def sha_512_224(input)
            OpenSSL::Digest.new('SHA512-224').hexdigest(input)
        end

        def sha_512_256(input)
            OpenSSL::Digest.new('SHA512-256').hexdigest(input)
        end

        # SHA3
        def sha3_224(input)
            OpenSSL::Digest.new('SHA3-224').hexdigest(input)
        end

        def sha3_256(input)
            OpenSSL::Digest.new('SHA3-256').hexdigest(input)
        end

        def sha3_384(input)
            OpenSSL::Digest.new('SHA3-384').hexdigest(input)
        end

        def sha3_512(input)
            OpenSSL::Digest.new('SHA3-512').hexdigest(input)
        end
    end
end

Liquid::Template.register_filter(Jekyll::HashFilter)