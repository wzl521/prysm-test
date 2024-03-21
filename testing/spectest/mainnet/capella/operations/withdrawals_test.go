package operations

import (
	"testing"

	"github.com/prysmaticlabs/prysm/v5/testing/spectest/shared/capella/operations"
)

func TestMainnet_Capella_Operations_Withdrawals(t *testing.T) {
	operations.RunWithdrawalsTest(t, "mainnet")
}
