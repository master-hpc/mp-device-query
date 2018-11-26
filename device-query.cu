//
// TP: Exploration de la machine
// Compl√ter les TODOs
//

#include<iostream>

int main (int argc, char ** argv) {
    
    // Nombre de GPU sur la machine supporant CUDA
    int devices_count = 0;
    cudaGetDeviceCount(&devices_count);
    
    std::cout << "Cette machine est √©qui√©e de " << devices_count << " GPU(s) supportant CUDA" << std::endl;
    // Lire les propri√t√s de chaque GPU
    for (int device_index = 0; device_index < devices_count; ++device_index) {
        
        std::cout << "============" << std::endl << "GPU index: " << device_index << std::endl;
        cudaDeviceProp device_properties;
        cudaGetDeviceProperties(&device_properties, device_index);
        
        std::cout << "Nom du GPU: " << device_properties.name << std::endl;
        std::cout << "Compute Capability: " << device_properties.major << "." << device_properties.minor << std::endl;
        std::cout << "Nombre de SMs: " << device_properties.multiProcessorCount << std::endl;
        std::cout << "Taille du warp: " << device_properties.warpSize << std::endl;

        // TODO: Imprimer d'autres propri√t√s
        // TIP: Voir https://stackoverflow.com/a/32531982/3503855        
    }
    
    // Consulter le lien suivant pour plus d'information sur la structure "cudaDeviceProp"
    // http://developer.download.nvidia.com/compute/cuda/3_2_prod/toolkit/docs/online/structcudaDeviceProp.html

    return 0;
}
