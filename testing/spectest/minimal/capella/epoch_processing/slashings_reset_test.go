package epoch_processing

import (
	"testing"

	"github.com/prysmaticlabs/prysm/v5/testing/spectest/shared/capella/epoch_processing"
)

func TestMinimal_Capella_EpochProcessing_SlashingsReset(t *testing.T) {
	epoch_processing.RunSlashingsResetTests(t, "minimal")
}
