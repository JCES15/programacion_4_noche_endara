package com.example.compose.material

// ui/Paso01_TextField.kt

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

@Composable
fun Paso01Ejemplo1Screen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Paso 1 · TextField y OutlinedTextField",
            style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        SumaNumeros()
    }
}



// ── Demo 2: Suma de dos numeros ───────────────────────────────
@Composable
private fun SumaNumeros() {
    var nombre      by remember { mutableStateOf("") }
    var numero1     by remember { mutableStateOf("") }
    var numero2    by remember { mutableStateOf("") }
    var rel   by remember { mutableStateOf("") }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text("Formulario nuevo contacto",
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.primary)

        // Nombre — validación básica de longitud
        OutlinedTextField(
            value           = nombre,
            onValueChange   = { nombre = it },
            label           = { Text("PRODUCTO") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },

            // keyboardOptions configura el teclado del sistema operativo
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )

        // Nombre — validación básica de longitud
        OutlinedTextField(
            value           =numero1,
            onValueChange   = { numero1 = it },
            label           = { Text("Cantidad Comprada") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },

            // keyboardOptions configura el teclado del sistema operativo
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )

        OutlinedTextField(
            value           =numero2,
            onValueChange   = { numero2 = it },
            label           = { Text("Precio Unitario") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },

            // keyboardOptions configura el teclado del sistema operativo
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )

        Button(
            onClick = {
                val numero1Double = numero1.toDoubleOrNull() ?: 0.0
                val numero2Double = numero2.toDoubleOrNull() ?: 0.0

                var resultado = numero1Double * numero2Double

                if (resultado > 50) {
                    resultado -= resultado * 0.1
                }

                rel = resultado.toString()
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(text = "CALCULAR")
        }
        Text(text = "Subtotal = $rel")

    }
}

@Preview(showBackground = true)
@Composable
fun Paso01Ejemplo1Preview() {
    MaterialTheme { Paso01Ejemplo1Screen() }
}