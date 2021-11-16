require 'spec_helper'

describe(Jekyll::HashFilter) do
  let(:output) do
    render_liquid(content, {'str' => str})
  end

  # SHA
  context "SHA-224" do
    let(:str) { "SHA-224 test string" }
    let(:content)  { "{{ '#{str}' | sha_224 }}" }

    it "produces the correct SHA-224 hash" do
      expect(output).to eq("b61c3d89346ccb3f54018d43a88942b2284292ea99a953674b1d2d98")
    end
  end

  context "SHA-256" do
    let(:str) { "SHA-256 test string" }
    let(:content)  { "{{ '#{str}' | sha_256 }}" }

    it "produces the correct SHA-256 hash" do
      expect(output).to eq("7b5f93b25e76daa39830a7591d40750f656fafdde5efb9bb4b7a4fa00cc37227")
    end
  end

  context "SHA-384" do
    let(:str) { "SHA-384 test string" }
    let(:content)  { "{{ '#{str}' | sha_384 }}" }

    it "produces the correct SHA-384 hash" do
      expect(output).to eq("ea0378d51cc1679f525194895515930af035f1e7677ad558f6823927a64bb0e33dd60cf14eca0d5504edacae1b780529")
    end
  end

  context "SHA-512" do
    let(:str) { "SHA-512 test string" }
    let(:content)  { "{{ '#{str}' | sha_512 }}" }

    it "produces the correct SHA-512 hash" do
      expect(output).to eq("9faedb0bbb45bc01cc37b5c645c3136c949d482c0e6d9aeba0f63630570f0c5d4866e441b462eda8fbba21f41d47be69deb2a467111a989771820def5dcbd1df")
    end
  end

  context "SHA-512/224" do
    let(:str) { "SHA-512/224 test string" }
    let(:content)  { "{{ '#{str}' | sha_512_224 }}" }

    it "produces the correct SHA-512/224 hash" do
      expect(output).to eq("503941a788a47dedbec6e857f917ce28d1fdbd8b59c8bba24fe78634")
    end
  end

  context "SHA-512/256" do
    let(:str) { "SHA-512/256 test string" }
    let(:content)  { "{{ '#{str}' | sha_512_256 }}" }

    it "produces the correct SHA-512/256 hash" do
      expect(output).to eq("26756c84af30abf395e4973b4c6f3c1e2499fbb77df7e08d6659737fd30158ed")
    end
  end

  # SHA3
  context "SHA3-224" do
    let(:str) { "SHA3-224 test string" }
    let(:content)  { "{{ '#{str}' | sha3_224 }}" }

    it "produces the correct SHA3-224 hash" do
      expect(output).to eq("f560c1381a3a81fb674f26cee8f2030570032ce6094dac84a0478afb")
    end
  end

  context "SHA3-256" do
    let(:str) { "SHA3-256 test string" }
    let(:content)  { "{{ '#{str}' | sha3_256 }}" }

    it "produces the correct SHA3-256 hash" do
      expect(output).to eq("c6d803ea0394cae943e1d70660d34511870a2b6395cf6222857c197e51db6103")
    end
  end

  context "SHA3-384" do
    let(:str) { "SHA3-384 test string" }
    let(:content)  { "{{ '#{str}' | sha3_384 }}" }

    it "produces the correct SHA3-384 hash" do
      expect(output).to eq("75684296cbbc768de02c251814f41288b47e902e1466efebe90352e436a77b2af7710fafef3bc3ebfc15ad4e4c1b408f")
    end
  end

  context "SHA3-512" do
    let(:str) { "SHA3-512 test string" }
    let(:content)  { "{{ '#{str}' | sha3_512 }}" }

    it "produces the correct SHA3-512 hash" do
      expect(output).to eq("d326751d4c34d9805e65ec39202dc5c7fdbc98d73923510fa13ceef8942986b701089eaacd5bb3d61d0517afd4ef724a64e5b2341a36c78582845155b58c0bb7")
    end
  end
end