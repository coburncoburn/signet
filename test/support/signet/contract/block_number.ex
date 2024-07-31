defmodule Signet.Contract.BlockNumber do
  @moduledoc ~S"""
  This module was auto-generated by Signet. Any changes may be lost.

  See `mix help signet.gen` for more information.
  """
  use Signet.Hex

  def contract_name do
    "BlockNumber"
  end

  def query_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "query",
      function_type: :function,
      returns: [%{name: "blockNumber", type: {:uint, 256}}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_query() do
    ABI.encode(query_selector(), [])
  end

  def prepare_query(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_query(), opts)
  end

  def build_trx_query(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_query()}
  end

  def call_query(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_query(contract), opts)
  end

  def estimate_gas_query(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_query(contract), opts)
  end

  def execute_query(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_query(), opts)
  end

  def decode_query_call(<<44, 70, 178, 5>> <> calldata) do
    ABI.decode(query_selector(), calldata)
  end

  def query_cool_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "queryCool",
      function_type: :function,
      returns: [
        %{
          name: "cool",
          type:
            {:tuple,
             [
               %{name: "x", type: :string},
               %{name: "ys", type: {:array, {:uint, 256}}},
               %{name: "fun", type: {:tuple, [%{name: "cat", type: :string}]}}
             ]}
        }
      ],
      state_mutability: :pure,
      types: []
    }
  end

  def encode_query_cool() do
    ABI.encode(query_cool_selector(), [])
  end

  def prepare_query_cool(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_query_cool(), opts)
  end

  def build_trx_query_cool(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_query_cool()}
  end

  def call_query_cool(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_query_cool(contract), opts)
  end

  def estimate_gas_query_cool(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_query_cool(contract), opts)
  end

  def execute_query_cool(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_query_cool(), opts)
  end

  def decode_query_cool_call(<<107, 188, 156, 20>> <> calldata) do
    ABI.decode(query_cool_selector(), calldata)
  end

  def exec_vm_query_cool(callvalue \\ 0) do
    case Signet.VM.exec_call(deployed_bytecode(), encode_query_cool(), callvalue) do
      {:ok, return_data} ->
        {:ok,
         ABI.decode(%ABI.FunctionSelector{types: query_cool_selector().returns}, return_data)}

      {:revert, revert_data} ->
        with :not_found <- decode_error(revert_data) do
          {:revert, "Unknown", revert_data}
        end
    end
  end

  def exec_vm_query_cool_raw(callvalue \\ 0) do
    Signet.VM.exec_call(deployed_bytecode(), encode_query_cool(), callvalue)
  end

  def query_four_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "queryFour",
      function_type: :function,
      returns: [%{name: "", type: :bytes}, %{name: "", type: :address}],
      state_mutability: :pure,
      types: []
    }
  end

  def encode_query_four() do
    ABI.encode(query_four_selector(), [])
  end

  def prepare_query_four(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_query_four(), opts)
  end

  def build_trx_query_four(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_query_four()}
  end

  def call_query_four(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_query_four(contract), opts)
  end

  def estimate_gas_query_four(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_query_four(contract), opts)
  end

  def execute_query_four(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_query_four(), opts)
  end

  def decode_query_four_call(<<160, 180, 62, 214>> <> calldata) do
    ABI.decode(query_four_selector(), calldata)
  end

  def exec_vm_query_four(callvalue \\ 0) do
    case Signet.VM.exec_call(deployed_bytecode(), encode_query_four(), callvalue) do
      {:ok, return_data} ->
        {:ok,
         ABI.decode(%ABI.FunctionSelector{types: query_four_selector().returns}, return_data)}

      {:revert, revert_data} ->
        with :not_found <- decode_error(revert_data) do
          {:revert, "Unknown", revert_data}
        end
    end
  end

  def exec_vm_query_four_raw(callvalue \\ 0) do
    Signet.VM.exec_call(deployed_bytecode(), encode_query_four(), callvalue)
  end

  def query_three_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "queryThree",
      function_type: :function,
      returns: [%{name: "", type: {:uint, 256}}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_query_three() do
    ABI.encode(query_three_selector(), [])
  end

  def prepare_query_three(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_query_three(), opts)
  end

  def build_trx_query_three(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_query_three()}
  end

  def call_query_three(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_query_three(contract), opts)
  end

  def estimate_gas_query_three(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_query_three(contract), opts)
  end

  def execute_query_three(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_query_three(), opts)
  end

  def decode_query_three_call(<<219, 127, 37, 93>> <> calldata) do
    ABI.decode(query_three_selector(), calldata)
  end

  def query_two_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "queryTwo",
      function_type: :function,
      returns: [%{name: "x", type: {:uint, 256}}, %{name: "y", type: {:uint, 256}}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_query_two() do
    ABI.encode(query_two_selector(), [])
  end

  def prepare_query_two(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_query_two(), opts)
  end

  def build_trx_query_two(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_query_two()}
  end

  def call_query_two(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_query_two(contract), opts)
  end

  def estimate_gas_query_two(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_query_two(contract), opts)
  end

  def execute_query_two(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_query_two(), opts)
  end

  def decode_query_two_call(<<53, 0, 122, 122>> <> calldata) do
    ABI.decode(query_two_selector(), calldata)
  end

  def decode_call(calldata = <<44, 70, 178, 5>> <> _) do
    {:ok, "query", decode_query_call(calldata)}
  end

  def decode_call(calldata = <<107, 188, 156, 20>> <> _) do
    {:ok, "queryCool", decode_query_cool_call(calldata)}
  end

  def decode_call(calldata = <<160, 180, 62, 214>> <> _) do
    {:ok, "queryFour", decode_query_four_call(calldata)}
  end

  def decode_call(calldata = <<219, 127, 37, 93>> <> _) do
    {:ok, "queryThree", decode_query_three_call(calldata)}
  end

  def decode_call(calldata = <<53, 0, 122, 122>> <> _) do
    {:ok, "queryTwo", decode_query_two_call(calldata)}
  end

  def decode_call(_) do
    :not_found
  end

  def decode_event(_, _) do
    :not_found
  end

  def decode_error(_) do
    :not_found
  end

  def bytecode() do
    hex!(
      "0x608060405234801561001057600080fd5b50610321806100206000396000f3fe608060405234801561001057600080fd5b50600436106100575760003560e01c80632c46b2051461005c57806335007a7a1461006f5780636bbc9c1414610082578063a0b43ed614610097578063db7f255d1461005c575b600080fd5b6040514381526020015b60405180910390f35b6040805143808252602082015201610066565b61008a6100bf565b604051610066919061021c565b604080518082018252600381526201020360e81b6020820152905161006691906001906102ab565b6100c76101a2565b60408051600380825260808201909252600091602082016060803683370190505090506001816000815181106100ff576100ff6102d5565b602002602001018181525050600281600281518110610120576101206102d5565b602002602001018181525050600381600381518110610141576101416102d5565b6020908102919091018101919091526040805160a0810182526002606080830191825261686960f01b608084015290825281840194909452815193840182526004928401928352636d656f7760e01b84830152918352810191909152919050565b604051806060016040528060608152602001606081526020016101d16040518060200160405280606081525090565b905290565b6000815180845260005b818110156101fc576020818501810151868301820152016101e0565b506000602082860101526020601f19601f83011685010191505092915050565b60006020808352835160608285015261023860808501826101d6565b82860151601f1986830381016040880152815180845291850193506000929091908501905b8084101561027d578451825293850193600193909301929085019061025d565b5060408801518782038301606089015251858252935061029f858201856101d6565b98975050505050505050565b6040815260006102be60408301856101d6565b905060018060a01b03831660208301529392505050565b634e487b7160e01b600052603260045260246000fdfea2646970667358221220e8c5d69430acd7260e4e988c876237e9e690c8fb5cf361153ea4369423beea3764736f6c63430008180033"
    )
  end

  def deployed_bytecode() do
    hex!(
      "0x608060405234801561001057600080fd5b50600436106100575760003560e01c80632c46b2051461005c57806335007a7a1461006f5780636bbc9c1414610082578063a0b43ed614610097578063db7f255d1461005c575b600080fd5b6040514381526020015b60405180910390f35b6040805143808252602082015201610066565b61008a6100bf565b604051610066919061021c565b604080518082018252600381526201020360e81b6020820152905161006691906001906102ab565b6100c76101a2565b60408051600380825260808201909252600091602082016060803683370190505090506001816000815181106100ff576100ff6102d5565b602002602001018181525050600281600281518110610120576101206102d5565b602002602001018181525050600381600381518110610141576101416102d5565b6020908102919091018101919091526040805160a0810182526002606080830191825261686960f01b608084015290825281840194909452815193840182526004928401928352636d656f7760e01b84830152918352810191909152919050565b604051806060016040528060608152602001606081526020016101d16040518060200160405280606081525090565b905290565b6000815180845260005b818110156101fc576020818501810151868301820152016101e0565b506000602082860101526020601f19601f83011685010191505092915050565b60006020808352835160608285015261023860808501826101d6565b82860151601f1986830381016040880152815180845291850193506000929091908501905b8084101561027d578451825293850193600193909301929085019061025d565b5060408801518782038301606089015251858252935061029f858201856101d6565b98975050505050505050565b6040815260006102be60408301856101d6565b905060018060a01b03831660208301529392505050565b634e487b7160e01b600052603260045260246000fdfea2646970667358221220e8c5d69430acd7260e4e988c876237e9e690c8fb5cf361153ea4369423beea3764736f6c63430008180033"
    )
  end
end
